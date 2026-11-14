class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794672034-g01d6fa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794672034-g01d6fa/amp-darwin-arm64"
      sha256 "9052672247e02388ebee0219398fa8b4791280616483da7d90f3f38ee27d8539"
    else
      url "https://static.ampcode.com/cli/0.0.1794672034-g01d6fa/amp-darwin-x64"
      sha256 "d9812083a49f4dd3412caf839e3373161dc67185b0076dbee75971e93c05f64c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794672034-g01d6fa/amp-linux-arm64"
      sha256 "89fc955845ea45d74d2aca969ffd4f9345343a647318f1647a8c9083520d7eb4"
    else
      url "https://static.ampcode.com/cli/0.0.1794672034-g01d6fa/amp-linux-x64"
      sha256 "0a8e4858ba97cf3fac9bcc551b67e32139a5de99740febfee70d639bbed650af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
