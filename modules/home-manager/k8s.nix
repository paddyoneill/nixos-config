{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    helm
    helm-docs
    kubectl
    k9s
  ];
}
