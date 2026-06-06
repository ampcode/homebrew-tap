class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780773165-gd9c390"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780773165-gd9c390/amp-darwin-arm64"
      sha256 "2274d8c480c1db276ae4c892f459a2750430070db4c7d23e9ccf0f9daf18c9a4"
    else
      url "https://static.ampcode.com/cli/0.0.1780773165-gd9c390/amp-darwin-x64"
      sha256 "f0fffc775d051d9d8ff3c345f987274b916b1db38debe928fc3bd2f57ee37c95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780773165-gd9c390/amp-linux-arm64"
      sha256 "9be7396274c685874d2e5d4e81a067c93a65483eb78d1fc125f66177a96c31fa"
    else
      url "https://static.ampcode.com/cli/0.0.1780773165-gd9c390/amp-linux-x64"
      sha256 "79fe01cf793c1c1672b39202bbddbb589531f3a490a03b86691a1db807f6fbdc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
