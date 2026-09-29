class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790640099-gd4f4ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790640099-gd4f4ce/amp-darwin-arm64"
      sha256 "e0e3b2828c951d441a2defeb2c3e1e33af1741b336ef422135f5a788968c0045"
    else
      url "https://static.ampcode.com/cli/0.0.1790640099-gd4f4ce/amp-darwin-x64"
      sha256 "61a771ea74c001b497f6faa9ec0206945b2f039c8b6ac7725b43062bb247e571"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790640099-gd4f4ce/amp-linux-arm64"
      sha256 "584cae7e1e99df49b1c426e4fb5aca75766f3b28f5758afeeb43b62fcdef22f7"
    else
      url "https://static.ampcode.com/cli/0.0.1790640099-gd4f4ce/amp-linux-x64"
      sha256 "97805950f92b3ae967d7cd32bf037f033a0508b8c2408eff7964f5b5e678cfe6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
