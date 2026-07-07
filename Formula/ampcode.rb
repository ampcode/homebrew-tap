class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783383739-g931303"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783383739-g931303/amp-darwin-arm64"
      sha256 "fa3e6573a1e5269b989a05099a0317262ac57f45eea8adbdc5eed34a32b087a0"
    else
      url "https://static.ampcode.com/cli/0.0.1783383739-g931303/amp-darwin-x64"
      sha256 "a2e1982caeacb6d6669f590de809c3154ba07bece40efb7d9a08cc4a111d5337"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783383739-g931303/amp-linux-arm64"
      sha256 "cf1ae9f24b39f35b0c60260b84fe35b7a6e211f7ff2f45ec096e5ace73ada0aa"
    else
      url "https://static.ampcode.com/cli/0.0.1783383739-g931303/amp-linux-x64"
      sha256 "5da95043484e808076d521853cd7153e1d3651a536784859cee8ba73c26cffbf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
