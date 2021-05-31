# ComplianceAsCodeBuildArtifacts
Build Artifacts for Compliance as Code OSCAP outputs (from master branch)

The main purpose of this is that I needed the OSCAP XCCDF outputs for Ubuntu 20.04 that are not included in the existing OSCAP packages for Ubuntu 20.04.

These are simply build artifacts of the current master branch from:
https://github.com/ComplianceAsCode/content

##Usage
For the ansible playbooks on a single node you can use:
```
sudo ansible-playbook ubuntu2004-playbook-standard.yml --connection=local --inventory 127.0.0.1, --limit 127.0.0.1
```

For the XCCDF templates you can use (you will need several files, not just the xccdf template):
```
oscap xccdf --profile xccdf_org.ssgproject.content_profile_standard --report report.html ssg-ubuntu2004-ds.xml
```
