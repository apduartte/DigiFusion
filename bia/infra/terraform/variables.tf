variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Environment name (dev/staging/prod)"
}

# -------------------------
# NETWORK (VPC MODULE)
# -------------------------
variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of public subnet CIDRs"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of private subnet CIDRs"
}

variable "domain_name" {
  type        = string
  description = "Base domain used for ACM certificate and DNS (e.g. example.com)"
}

# -------------------------
# COMPUTE (EC2 MODULE)
# -------------------------
variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "key_name" {
  type        = string
  description = "SSH key name for EC2 access (optional if using SSM)"
  default     = null
}

variable "ssm_instance_profile_name" {
  type        = string
  description = "IAM instance profile name for SSM access (recommended instead of SSH)"
  default     = null
}

# -------------------------
# GLOBAL TAGS
# -------------------------
variable "tags" {
  type        = map(string)
  description = "Common tags applied to all resources"
  default     = {}
}

# -------------------------
# ACCESS (EC2 ACCESS CONTROL)
# -------------------------

variable "key_name" {
  description = "SSH key pair name (optional - avoid using in favor of SSM)"
  type        = string
  default     = null
}

variable "ssm_instance_profile_name" {
  description = "IAM instance profile name for SSM access"
  type        = string
  default     = "ec2-ssm-role"

  validation {
    condition     = length(var.ssm_instance_profile_name) > 0
    error_message = "SSM instance profile must be defined."
  }
}
