class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793995239-gedfe82"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793995239-gedfe82/amp-darwin-arm64"
      sha256 "3bc9be9f8bf0dd6546b14cab579af9c7e58d5fc90490c6473d5c6deb549c4d10"
    else
      url "https://static.ampcode.com/cli/0.0.1793995239-gedfe82/amp-darwin-x64"
      sha256 "dc54e413ee254d37c272af3958d122c091e7817b6869b39030f9beb89d5b5a7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793995239-gedfe82/amp-linux-arm64"
      sha256 "51e6417db5026da7c18835d3ae2ee0f3e3514d6e07842ae4bbe5fbecc1ba01e8"
    else
      url "https://static.ampcode.com/cli/0.0.1793995239-gedfe82/amp-linux-x64"
      sha256 "87b2ebbdbcf583ca25411c5e7c4dc9d3981870687ca5b8f11d8faa9b20a2a9fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
