FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGd3LWh0dHAtc2luay1hcGIKZGVzY3JpcHRpb246IFRoaXMgaXMg\
YSBzYW1wbGUgYXBwbGljYXRpb24gZ2VuZXJhdGVkIGJ5IGFwYiBpbml0CmJpbmRhYmxlOiBGYWxz\
ZQphc3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6IEdhdGV3YXkgSFRUUCBT\
aW5rCiAgaW1hZ2VVcmw6ICJodHRwczovL2F2YXRhcnMyLmdpdGh1YnVzZXJjb250ZW50LmNvbS91\
LzMyMDc2ODI4P3M9MjAwJnY9NCIKICBwcm92aWRlckRpc3BsYXlOYW1lOiAiUmVkIEhhdCwgSW5j\
LiIKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogVGhpcyBkZWZhdWx0\
IHBsYW4gZGVwbG95cyBndy1odHRwLXNpbmstYXBiCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0\
YToge30KICAgIHBhcmFtZXRlcnM6CiAgICAtIG5hbWU6IGV2ZW50X3R5cGUKICAgICAgdGl0bGU6\
IENsb3VkIEV2ZW50IFR5cGUKICAgICAgZGVzY3JpcHRpb246IFRoZSBldmVudCB0eXBlIHRvIHN1\
YnNjcmliZSBmb3IKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAt\
IG5hbWU6IGNvbnN1bWVyX2dyb3VwCiAgICAgIHRpdGxlOiBUaGUgQXBhY2hlIEthZmthIENvbnN1\
bWVyIEdyb3VwCiAgICAgIGRlc2NyaXB0aW9uOiBuYW1lIG9mIHRoZSBjb25zdW1lciBncm91cCBm\
b3IgdGhlIGdpdmVuIGV2ZW50IHR5cGUgc3Vic2NyaXB0aW9uCiAgICAgIHR5cGU6IHN0cmluZwog\
ICAgICBkZWZhdWx0OiBteS1jb25zdW1lcgogICAgICByZXF1aXJlZDogdHJ1ZQogICAgLSBuYW1l\
OiBodHRwX3VyaQogICAgICB0aXRsZTogSFRUUCBlbmRwb2ludCAKICAgICAgZGVzY3JpcHRpb246\
IFVSSSBvZiBhIGZ1bmN0aW9uL3BvZCB3aGljaCByZWNlaXZlcyBldmVudHMKICAgICAgdHlwZTog\
c3RyaW5nCiAgICAgIHJlcXVpcmVkOiB0cnVlCg=="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
