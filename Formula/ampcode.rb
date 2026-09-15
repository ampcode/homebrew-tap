class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789444852-g1b704e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789444852-g1b704e/amp-darwin-arm64"
      sha256 "b6c4ff0c105f59e9da730a5073a34997f1e763ede0eec5a9715ae45ffd5b2210"
    else
      url "https://static.ampcode.com/cli/0.0.1789444852-g1b704e/amp-darwin-x64"
      sha256 "ca9e96dd576aa35cb7864bccf0d89c275753671a753f6ff357305317924f0e5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789444852-g1b704e/amp-linux-arm64"
      sha256 "d69b0e532a1a3e2a80af3f249c743089c5d775a67e0fb32d62240df1fb5ded57"
    else
      url "https://static.ampcode.com/cli/0.0.1789444852-g1b704e/amp-linux-x64"
      sha256 "a056519f529f413608f3712773135c060d5578b391fe8b269ac0157c9936be89"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
