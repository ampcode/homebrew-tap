class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778501018-gf409dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778501018-gf409dd/amp-darwin-arm64"
      sha256 "818ce8f78aaf97bbdc9a23430291be7944537e741b4bbb0fc869dde68fc03599"
    else
      url "https://static.ampcode.com/cli/0.0.1778501018-gf409dd/amp-darwin-x64"
      sha256 "c22ceddb6df0a4c5203824c9c23fa003fc4aa0614fa11fdb913735c6c6210a43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778501018-gf409dd/amp-linux-arm64"
      sha256 "174657f3e3328e659023abd013d40ad2c0ce3d008bdc49650301a5caa243bf81"
    else
      url "https://static.ampcode.com/cli/0.0.1778501018-gf409dd/amp-linux-x64"
      sha256 "8a24cc701a7f0a11bb6d41d2978c2a7c13b16cd8f4bdea88a0e824ff8968fe10"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
