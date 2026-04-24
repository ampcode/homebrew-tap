class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777020383-gc09cba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777020383-gc09cba/amp-darwin-arm64"
      sha256 "2a9a410732165701a19cd51deb773d516795413d09e1d2a087958f4dc1e1fb2e"
    else
      url "https://static.ampcode.com/cli/0.0.1777020383-gc09cba/amp-darwin-x64"
      sha256 "253141b74de91ca44f8d452df8930aee1fdae510200fc06ca53498ef9b343919"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777020383-gc09cba/amp-linux-arm64"
      sha256 "f66027ddb5bb132f4ed5e3f64e8076d815c54c6f3633f72be29423411626c7a6"
    else
      url "https://static.ampcode.com/cli/0.0.1777020383-gc09cba/amp-linux-x64"
      sha256 "c8ff8ed4e31476bbae626b34931eac586bd6f4d913b4b1d00cea5f6c433e9b0e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
