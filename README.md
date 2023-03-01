# The official Terraform Tutorial

![Terraform](https://i0.wp.com/datascientest.com/wp-content/uploads/2022/04/terraform-1.jpg?fit=1520%2C601&ssl=1)

This is brand new Persian Terraform freedom tutorial from @babakDoraniArab,
contribute and improve this tutorial repo.

## Installation

You can find your os related help for installation in below:

<details >
<summary > Linux </summary>

<ul>
    
<details>
<summary> Debian/Ubuntu </summary>
    
#### Ubuntu/Debian
Ensure that your system is up to date and you have installed the gnupg, software-properties-common, and curl packages installed. You will use these  packages to verify HashiCorp's GPG signature and install HashiCorp's Debian package repository.
  
```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```
Install the HashiCorp GPG key.
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | \
  gpg --dearmor | \
  sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
```
Verify the key's fingerprint.
```bash
   gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
```
The gpg command will report the key fingerprint:
```
    /usr/share/keyrings/hashicorp-archive-keyring.gpg
    -------------------------------------------------
    pub   rsa4096 XXXX-XX-XX [SC]
          AAAA AAAA AAAA AAAA
    uid           [ unknown] HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>
    sub   rsa4096 XXXX-XX-XX [E]
```
  Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.
  ```bash
  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
  ```
   Download the package information from HashiCorp.
   ```bash
   sudo apt update
   ```
   Install Terraform from the new repository.
   ```bash
   sudo apt-get install terraform
   ```

</details>

<details>
<summary> CentOS/RHEL </summary>

Install yum-config-manager to manage your repositories.

```bash
sudo yum install -y yum-utils
```

Use yum-config-manager to add the official HashiCorp Linux repository.

```bash
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
```

Install Terraform from the new repository.

```bash
sudo yum -y install terraform
```

</details>
</li>

<details>
<summary>Fedora</summary>

### Fedora

Install `dnf config-manager` to manage your repositories.

```bash
sudo dnf install -y dnf-plugins-core
```

Use `dnf config-manager` to add the official HashiCorp Linux repository.

```bash
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
```

Install Terraform from the new repository.

```bash
sudo dnf -y install terraform
```

</details>

<details>
<summary> Amazon-linux </summary>

Install yum-config-manager to manage your repositories.

```bash
sudo yum install -y yum-utils
```

Use yum-config-manager to add the official HashiCorp Linux repository.

```bash
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
```

</details>

</ul>
</details>
