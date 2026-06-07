class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780797859-g3669ef"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780797859-g3669ef/amp-darwin-arm64"
      sha256 "d9a817c03f53b316458c9a32b1ff628e2f105569493e23b856adc6846d19beba"
    else
      url "https://static.ampcode.com/cli/0.0.1780797859-g3669ef/amp-darwin-x64"
      sha256 "ee5d61ac9b12703724d5664560a3809be9877d7ad81cc2b8669ab5725ed72aaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780797859-g3669ef/amp-linux-arm64"
      sha256 "b2452a336dec221a20407b2eba95f49859112c22a4e0a8edce4719e2716e7c92"
    else
      url "https://static.ampcode.com/cli/0.0.1780797859-g3669ef/amp-linux-x64"
      sha256 "d39e6d74d92c5473aed1070ac2bfd0d80019f149d95ed0fc02197d39e77a45be"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
