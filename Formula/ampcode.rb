class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777967145-g633c91"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777967145-g633c91/amp-darwin-arm64"
      sha256 "9cedc917c1bdc8018b90a8ede93a34c08242d57394496c6467b968fb633f591a"
    else
      url "https://static.ampcode.com/cli/0.0.1777967145-g633c91/amp-darwin-x64"
      sha256 "3dded8443f00d474b58136084d92ff2d05ac21d33ce1ad7114bb6ee2bb4c96ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777967145-g633c91/amp-linux-arm64"
      sha256 "28bd76d2b1b9656be2d7066784084d1808810e6a015af2722320db80ea2e210a"
    else
      url "https://static.ampcode.com/cli/0.0.1777967145-g633c91/amp-linux-x64"
      sha256 "cf04b9d5a53c491962008de5327fcdd6d4bc54153916b123d07aa29cf6ff1cbd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
