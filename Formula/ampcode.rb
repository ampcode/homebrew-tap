class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793923252-ged5b63"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793923252-ged5b63/amp-darwin-arm64"
      sha256 "cfe62c5dd89a189ffcc6a1a7dd80846306e061d9fe0a099d548df3df8c370bae"
    else
      url "https://static.ampcode.com/cli/0.0.1793923252-ged5b63/amp-darwin-x64"
      sha256 "a3a2d560215ec144220aa79d57c1f79cbdf0650cd407223ac8ecb7d7db2adaf1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793923252-ged5b63/amp-linux-arm64"
      sha256 "1ca4ecd5ff87d7b425827009778bde9e8b87993579fcdfa8303109acfa0ec834"
    else
      url "https://static.ampcode.com/cli/0.0.1793923252-ged5b63/amp-linux-x64"
      sha256 "2031d8d466cdfee0f5fb515f6be04ea0dc01674a060e53203d59bb71dbee6a57"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
