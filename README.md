# terraform

Here is a clean, professional `README.md` for your repository:

````markdown
# Terraform Learning Journey 🚀

This repository documents my hands-on journey of learning **Terraform from beginner to advanced**.

The goal of this repository is to build strong practical knowledge of **Infrastructure as Code (IaC)** by learning Terraform concepts step by step and implementing them through hands-on exercises.

## 🛠 Technologies Used

- Terraform
- AWS Provider
- LocalStack
- AWS CLI
- Git
- GitHub

## 🎯 Learning Approach

Each Terraform topic is organized into a separate directory.

Every lesson contains practical examples that can be independently explored and executed.

```text
terraform/
│
├── 01-first-resource/
├── 02-terraform-state/
├── 03-variables-outputs-locals/
├── 04-resource-dependencies/
├── 05-count/
└── ...
````

## 📚 Topics Covered

### Beginner

* [x] Terraform Basics
* [x] Creating the First Resource
* [x] Terraform State
* [x] Variables
* [x] Outputs
* [x] Local Values
* [x] Resource Dependencies
* [x] count
* [x] for_each

### Intermediate

* [ ] Data Sources
* [ ] Terraform Functions
* [ ] Dynamic Blocks
* [ ] Lifecycle Rules
* [ ] Terraform Modules
* [ ] Workspaces
* [ ] Resource Import

### Advanced

* [ ] Remote State
* [ ] State Locking
* [ ] Remote Backends
* [ ] Terraform Provisioners
* [ ] Advanced Modules
* [ ] Terraform CI/CD
* [ ] Infrastructure Testing
* [ ] Production Terraform Best Practices

## 🧪 Lab Environment

The Terraform examples in this repository are tested locally using **LocalStack**.

LocalStack allows AWS services to be emulated locally, making it possible to practice Terraform without creating real AWS infrastructure.

## 🚀 How to Run the Examples

Navigate to a lesson directory:

```bash
cd 01-first-resource
```

Initialize Terraform:

```bash
terraform init
```

Format the configuration:

```bash
terraform fmt
```

Validate the configuration:

```bash
terraform validate
```

Preview the infrastructure changes:

```bash
terraform plan
```

Apply the configuration:

```bash
terraform apply
```

Destroy the resources when finished:

```bash
terraform destroy
```

## 📁 Repository Structure

Each directory represents a separate Terraform learning exercise.

For example:

```text
01-first-resource/
├── main.tf
└── .terraform.lock.hcl
```

More advanced lessons may contain multiple Terraform files:

```text
03-variables-outputs-locals/
├── main.tf
├── variables.tf
├── outputs.tf
└── terraform.tfvars.example
```

## 🔐 Important Notes

Terraform state files and sensitive local configuration files are excluded from Git using `.gitignore`.

The following files are generally not committed:

```text
.terraform/
*.tfstate
*.tfstate.*
*.tfvars
.env
*.pem
*.key
```

The `.terraform.lock.hcl` file is committed to ensure consistent provider versions.

## 🎯 Goal

The objective of this learning journey is to gain strong hands-on Terraform skills and build production-style Infrastructure as Code projects relevant to:

* DevOps Engineering
* Site Reliability Engineering (SRE)
* Cloud Engineering
* Platform Engineering
