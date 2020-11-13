# dsp-appsec-base-image-hardening

This repo provides tools for system hardening.

## Running Locally

To run CIS hardening via ansible, clone this repo and call the script. The script will automatically install all the requirements and run the playbook in a virtual environments.

Make sure to replace the `[OS]` below with your system. 

Currently, supported systems include:

* `debian9`

* `centos7`
```
git clone https://github.com/broadinstitute/dsp-appsec-base-image-hardening.git

dsp-appsec-base-image-hardening/[OS]/harden-images.sh
```
## Access Images on GCP

Pre-hardened images can also be used to instantiate compute instances on GCP. For instructions on using the images listed here, please see [https://dsp-security.broadinstitute.org/platform-security-categories/os-base-hardening](https://dsp-security.broadinstitute.org/platform-security-categories/os-base-hardening).

## Questions

Please contact `appsec@broadinstitute.org` with any questions.


