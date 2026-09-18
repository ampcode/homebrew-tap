class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789689675-g7fec46"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789689675-g7fec46/amp-darwin-arm64"
      sha256 "bc082dd3fde3c2b800d40730a063834c3d3603d536234c86331dd080139de998"
    else
      url "https://static.ampcode.com/cli/0.0.1789689675-g7fec46/amp-darwin-x64"
      sha256 "f65622015223f529708bc68ca018028860c0aad5f53963a1abb3e54b305e2172"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789689675-g7fec46/amp-linux-arm64"
      sha256 "fb28a9900bb84549d8cf78e14576252b3b526658f850631e21d6da3dd96c047a"
    else
      url "https://static.ampcode.com/cli/0.0.1789689675-g7fec46/amp-linux-x64"
      sha256 "cede6e166afcd381e3cc35b7aad212737fec7440c5647f919eeac755164f508b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
