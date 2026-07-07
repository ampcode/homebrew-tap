class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783425423-g54e426"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783425423-g54e426/amp-darwin-arm64"
      sha256 "ed356106576084c74097098ba62f2e9523f6f4c1b534cef5ccb4fee5da68897e"
    else
      url "https://static.ampcode.com/cli/0.0.1783425423-g54e426/amp-darwin-x64"
      sha256 "8e29f901eb7583622d8c0f17c76cc8661ef7c5646b395d1d50df358f654a5bd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783425423-g54e426/amp-linux-arm64"
      sha256 "abcbff9c07eb8cfdd70f45ce16a09d757bfaf02ce64bf14141a1d16888cb7d8b"
    else
      url "https://static.ampcode.com/cli/0.0.1783425423-g54e426/amp-linux-x64"
      sha256 "892521157566f387a44d3c1a2f37ac81164f0958c08790cdf0cb493fedeaedb2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
