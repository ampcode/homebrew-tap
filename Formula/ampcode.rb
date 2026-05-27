class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779910552-g33fb46"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779910552-g33fb46/amp-darwin-arm64"
      sha256 "887f5ccd358e09376bd02afca52903b175718594230692e99bb1bb549859712e"
    else
      url "https://static.ampcode.com/cli/0.0.1779910552-g33fb46/amp-darwin-x64"
      sha256 "b1169d0bbedb7dd746f4a10fd9781f136c73e5d7f724e652c5ccd1306494a64d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779910552-g33fb46/amp-linux-arm64"
      sha256 "810bce504ac6954777ed4a92cf9d82558ab725ad8a74a459a77cb501d7114fac"
    else
      url "https://static.ampcode.com/cli/0.0.1779910552-g33fb46/amp-linux-x64"
      sha256 "2a914fe9948f2a3a51ad8befbf36dbd64fb10a1aa3574528772a771b93f2f514"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
