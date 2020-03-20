# dsp-appsec-base-image-hardening

To run CIS hardening via ansible, clone this repo and call the script. The script will automatically install all the requirements and run the playbook in a virtual environments.

Make sure to replace the `[OS]` below with your system. 

Currently, supported systems include:

* `debian9`

```
git clone https://github.com/broadinstitute/dsp-appsec-base-image-hardening.git

dsp-appsec-base-image-hardening/[OS]/harden-images.sh
```



