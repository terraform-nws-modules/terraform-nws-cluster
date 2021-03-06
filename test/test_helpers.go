package test

import (
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func config(t *testing.T, cfg testCaseT, servicePath string) *terraform.Options {

	return terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: servicePath,
		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"vpc_name": cfg.vpcName,
			"vpc_cidr": cfg.vpcCidr,
			"domain":   cfg.domain,

			"subnet_public_name": cfg.subnetPubName,
			"subnet_public_cidr": cfg.subnetPubCidr,

			"instance_public":     cfg.instPub,
			"instance_name":       cfg.instName,
			"instance_private_ip": cfg.instPrivIP,
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
