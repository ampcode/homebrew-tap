class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778257551-g918012"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778257551-g918012/amp-darwin-arm64"
      sha256 "6a7a92424086fe492c3a68e0475067dd6f95b44dac6ee3bff1719802f2499712"
    else
      url "https://static.ampcode.com/cli/0.0.1778257551-g918012/amp-darwin-x64"
      sha256 "9fa967dacf30f414221d6ad0175b26551847e5688d92382a5b57fdef9147a9e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778257551-g918012/amp-linux-arm64"
      sha256 "80d4cd71d764d6233461e9594211b456a7a50cb67df96dc08967082d97b2979b"
    else
      url "https://static.ampcode.com/cli/0.0.1778257551-g918012/amp-linux-x64"
      sha256 "c47990133c3b0ae7dbfb92105e45442c4012787b4ad1d2b9ca2894e4feab5b13"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
