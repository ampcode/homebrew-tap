class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770190910-gd56b00"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770190910-gd56b00/amp-darwin-arm64"
      sha256 "6267ef9588e824d0770683eb28fbcad6dee7cd0ca7c971999e321722abcc51b7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770190910-gd56b00/amp-darwin-x64"
      sha256 "0f33f610afd583f73a95ccd65271014bc66a6b6ab6efac51bcfdf4d276b07f3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770190910-gd56b00/amp-linux-arm64"
      sha256 "e3c9798bc0f07d9eee37416791d4edea55d63cc050d275f7d6f3e03788296424"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770190910-gd56b00/amp-linux-x64"
      sha256 "e6d1abd45dc6e30e212928ab4a1ad2449b96e1bc50709f37a649e3437903d0df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
