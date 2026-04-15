# Azure Services through Terraform

This Terraform project provisions a complete Azure infrastructure setup including networking, compute, storage, and monitoring resources. It creates a demo environment with a virtual machine accessible via SSH, along with monitoring and alerting capabilities.

## Architecture Overview

The project deploys the following Azure resources:

### 1. Resource Group
- **Name**: demo-rg
- **Location**: Central India
- Serves as the container for all other resources

### 2. Virtual Network (VNet)
- **Name**: demo-vnet
- **Address Space**: 10.0.0.0/16
- **Subnet**: demo-subnet (10.0.1.0/24)
- Includes public IP address and network interface for VM connectivity

### 3. Network Security Group (NSG)
- **Name**: demo-nsg
- **Rules**:
  - Allow SSH (port 22) from anywhere
  - Allow HTTP (port 80) from anywhere
  - Allow HTTPS (port 443) from anywhere

### 4. Virtual Machine
- **Name**: demo-vm
- **OS**: Ubuntu Server 22.04 LTS (Canonical)
- **Size**: Standard_B1s
- **Admin Username**: azureuser
- **Admin Password**: admin@1234
- Connected to the VNet with public IP for external access

### 5. Blob Storage
- **Storage Account**: demostorageacct12345 (must be globally unique)
- **Container**: demo-container (private access)
- **Blob**: sample-file.zip (uploaded from local file)

### 6. Azure Monitor
- **Log Analytics Workspace**: demo-law (for log collection)
- **Action Group**: demo-action-group (email notifications)
- **Metric Alert**: high-cpu-alert (triggers when VM CPU > 50% for 5 minutes)
- **Alert Email**: dikshaturkat2022@gmail.com

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (v1.0 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) or Azure account with appropriate permissions
- Azure subscription with sufficient quota for the resources

## Authentication

Ensure you are authenticated with Azure. You can use:

```bash
az login
```

Or set environment variables for service principal authentication.

## Deployment

1. **Clone or navigate to the project directory**

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Review the plan**:
   ```bash
   terraform plan
   ```

4. **Apply the configuration**:
   ```bash
   terraform apply
   ```

5. **Confirm** by typing `yes` when prompted.

## Important Notes

- **Storage Account Name**: The default storage account name `demostorageacct12345` must be globally unique. Update the variable if it conflicts.
- **Security**: The default admin password is `admin@1234`. Change this in production environments.
- **Costs**: This setup includes billable resources. Monitor usage and destroy when not needed.
- **Blob Upload**: Ensure `sample-file.zip` exists in the Blob Storage directory before applying.

## Outputs

After deployment, Terraform will output:
- Resource Group name and location
- Virtual Machine public IP
- Storage account details
- Log Analytics Workspace details

## Cleanup

To destroy all resources:

```bash
terraform destroy
```

## Customization

Modify variables in the respective `variable.tf` files or create a `terraform.tfvars` file to customize:
- Azure region
- VM size and credentials
- Network address spaces
- Storage account names
- Alert thresholds and email addresses

## Project Structure

```
Azure-Services-through-Terraform/
├── README.md
├── Azure Monitor/
│   ├── azure-monitor.tf
│   ├── output.tf
│   └── variable.tf
├── Blob Storage/
│   ├── blob-storage.tf
│   ├── output.tf
│   └── variable.tf
├── Resource group/
│   ├── resource-group.tf
│   └── variable.tf
├── Security group/
│   ├── NSG.tf
│   ├── output.tf
│   └── variable.tf
├── Virtuak Network/
│   ├── VNet.tf
│   ├── output.tf
│   └── variable.tf
└── virtual machine/
    ├── vm.tf
    ├── output.tf
    └── variable.tf
```

Each directory contains Terraform configuration files organized by resource type.
