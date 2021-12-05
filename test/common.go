package test

const (
	instType = "t2.micro"
	diskSize = 12
	template = "Ubuntu 20.04 LTS"
	vpcCidr  = "10.0.1.0/24"
	domain   = "my.local"
	vpcName  = "vpc-mycorp"
	keypair  = "bku"
	aclName  = "my-public-acl"
)

type testCaseT struct {
	testName string

	vpcName        string
	vpcCidr        string
	domain         string
	subnetPrivName []string
	subnetPrivCidr []string
	subnetPubName  []string
	subnetPubCidr  []string
	aclName        string
	aclCIDRList    []string
	aclPortList    []string

	instPub    bool
	instName   []string
	instPrivIP []string
	instType   []string
	diskSize   []int
	template   []string
	keypair    string
}
