module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "lgcc-dev-test-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-03f869b4266d498f2"

  private_subnets = ["subnet-0ee8a34ed3352283b", "subnet-08dc7ada4587c3b09"]
  public_subnets  = ["subnet-070532b5a42d3a1ba"]
}
