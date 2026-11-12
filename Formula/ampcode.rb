class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794470450-g3a6702"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794470450-g3a6702/amp-darwin-arm64"
      sha256 "a025513f0a2009ab54ec55581f194fce352c660040ebd96a328c03682698df0b"
    else
      url "https://static.ampcode.com/cli/0.0.1794470450-g3a6702/amp-darwin-x64"
      sha256 "54e2d55e878613c94c88f31641348e6ce2c79d5e916cc200298b7cb0f8f3ca8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794470450-g3a6702/amp-linux-arm64"
      sha256 "1f0f2b71ddfed7726219377ff2ccde3832a03985ca191e8a1c845e3deb1957b5"
    else
      url "https://static.ampcode.com/cli/0.0.1794470450-g3a6702/amp-linux-x64"
      sha256 "75854ba8753802e2192c5c42f3d7dfdec2f9decdf155c6a715f264813597efad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
