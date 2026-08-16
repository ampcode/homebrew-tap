class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786881675-g57e027"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786881675-g57e027/amp-darwin-arm64"
      sha256 "b53bea2b43d10a2c467034b1ced13f033671adbbf5c1225db12aaea75ef5b43f"
    else
      url "https://static.ampcode.com/cli/0.0.1786881675-g57e027/amp-darwin-x64"
      sha256 "9bb66291de04b6fe24f6d4b3e83a6f121044eaa48f9f866333f571ee649b00e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786881675-g57e027/amp-linux-arm64"
      sha256 "b26fe61648ac6b780ea10fcd6846621f687926c824190b5ae4b15890d68632c1"
    else
      url "https://static.ampcode.com/cli/0.0.1786881675-g57e027/amp-linux-x64"
      sha256 "98ba3d58583dd3f5d4568fe3a629004af71fd967ac860f33777efcfd3bbb1ac9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
