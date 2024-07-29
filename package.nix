{
  buildGoModule,
  lib,
}:
buildGoModule rec {
  pname = "tailscalesd";
  version = "0.2.2-2";

  src = ./.;

  vendorHash = "sha256-UVVMsjrtwgYzZbTizl9/YOznyXqCcxS1waersYPO7zw=";

  meta = with lib; {
    description = "tomas";
    homepage = "https://github.com/tomasharkema/nix-config";
    license = licenses.mit;
    mainProgram = "tailscalesd";
  };

  # ASSUME_NO_MOVING_GC_UNSAFE_RISK_IT_WITH = "go1.21";
}
