package test

import (
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func config(t *testing.T, cfg testCaseT, servicePath string) *terraform.Options {

	return terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: servicePath,
		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"vpc_name":            cfg.vpcName,
			"subnet_name":         cfg.subnetName,
			"instance_name":       cfg.instName,
			"vpc_cidr":            cfg.vpcCidr,
			"subnet_cidr":         cfg.subnetCidr,
			"subnet_public":       cfg.subnetPublic,
			"domain":              cfg.domain,
			"instance_private_ip": cfg.instIP,
			"instance_type":       cfg.instType,
			"root_disk_size":      cfg.diskSize,
			"template":            cfg.template,
		},
		// Add retries to eliminate trasilent errors
		MaxRetries:         3,
		TimeBetweenRetries: 5 * time.Second,
	})
}

// validates Terraform output versus expected
func validate(t *testing.T, opts *terraform.Options, name []string) {
	out_name := terraform.Output(t, opts, "instance_name")
	// out_id := terraform.Output(t, opts, "id")

	act_name := strings.Fields(trimBrackets(out_name))
	// act_id := strings.Fields(trimBrackets(out_id))

	// assert.Equal(t, len(name), len(act_id))
	assert.ElementsMatch(t, name, act_name)
}

// Validation helpers
func trimBrackets(s string) string {
	str0 := strings.TrimLeft(s, "[")
	str1 := strings.TrimRight(str0, "]")
	return str1
}

func genVMName() string {
	return fmt.Sprintf("vm-%s", random.UniqueId())
}
