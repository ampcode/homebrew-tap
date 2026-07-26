class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785025152-g56c26c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785025152-g56c26c/amp-darwin-arm64"
      sha256 "53c4e10643c8648106dfc70217a3d9168fcfbaeef21cc17aa2c5d4cbbbe45cc7"
    else
      url "https://static.ampcode.com/cli/0.0.1785025152-g56c26c/amp-darwin-x64"
      sha256 "0cf78bfedf26be4644aeaccda2b697a2a021cd4f717fd1ecd3826cd9bb2e50af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785025152-g56c26c/amp-linux-arm64"
      sha256 "fbd128bbf081049fd0715949301b8070425e7a5a4eed335088280d6dd399b0b4"
    else
      url "https://static.ampcode.com/cli/0.0.1785025152-g56c26c/amp-linux-x64"
      sha256 "a749e3519bfbf419d61c0c957c5cd6bc4557bdef75a57273af200acb496cee53"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
