# tools

==================
// upload helm chart to ICP
// Loads a Helm chart archive to an IBM Cloud Private cluster. 
// Before you load a Helm chart, set up Docker and push your images to the private registry. 
// See Pushing and pulling images. 
bx pr load-helm-chart --archive helmchart.tgz --clustername dc1cp01.icp
cd /root/Downloads/ucd_6.2.7/charts
bx pr load-helm-chart --archive ibm-ucd-prod-1.0.0.974499.tgz --clustername dc1cp01.icp

---
// before upload chart, needs to initialize helm
echo "1" | bx pr login -u admin -p admin --skip-ssl-validation
echo "1" | bx pr login -u admin -p admin --skip-ssl-validation
helm init --client-only
helm init --client-only --skip-refresh
cd /root/Downloads/ucd_7.0.0/charts
bx pr load-helm-chart --archive ibm-ucd-prod-2.0.0.tgz --clustername dc1cp01.icp
// 6.2.7
cd /root/Downloads/ucd_6.2.7/charts
bx pr load-helm-chart --archive ibm-ucd-prod-1.0.0.974499.tgz --clustername dc1cp01.icp
