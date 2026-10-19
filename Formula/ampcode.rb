class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792440037-g9b4a2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792440037-g9b4a2e/amp-darwin-arm64"
      sha256 "b785a840165c9cbb5b510aadd30c9b4d6a64ac7efb789611d49e6c9a7278a8cf"
    else
      url "https://static.ampcode.com/cli/0.0.1792440037-g9b4a2e/amp-darwin-x64"
      sha256 "ee0482ae7649338eef64dea0b4dc2bf640954bd21eb7aef8df681a36142a894b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792440037-g9b4a2e/amp-linux-arm64"
      sha256 "a226ead087b1cbac9bf2c46986be2b527cf9b142421fca0a9bbdca8aa2f8a93a"
    else
      url "https://static.ampcode.com/cli/0.0.1792440037-g9b4a2e/amp-linux-x64"
      sha256 "5464412a0d01a059e7942dfeead622c380e293b60919d23fc7fb094edd0470ea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
