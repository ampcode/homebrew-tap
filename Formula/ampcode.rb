class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779123314-gb27313"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779123314-gb27313/amp-darwin-arm64"
      sha256 "b209ef2bc44e70c40fef568162bba3cb51ee642d534fb787f12d082eba26084c"
    else
      url "https://static.ampcode.com/cli/0.0.1779123314-gb27313/amp-darwin-x64"
      sha256 "695b2ed6866a7ef9d861874cd7d2574ea18746abc5e81959b150ce41bf398d9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779123314-gb27313/amp-linux-arm64"
      sha256 "ab86e4d745256dd936cfe19a5fb7808a259ccbd4a313f6720814dd16b35c3484"
    else
      url "https://static.ampcode.com/cli/0.0.1779123314-gb27313/amp-linux-x64"
      sha256 "fadffc437c4b63705720b9b71dc2c71af3f8543d1d5ac37b5498c6730be4522f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
