class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778228828-g14902a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778228828-g14902a/amp-darwin-arm64"
      sha256 "879500f7bf33f44fa1b668165f794c6cc494f5c2bd91e967c45a74f22ad09ccf"
    else
      url "https://static.ampcode.com/cli/0.0.1778228828-g14902a/amp-darwin-x64"
      sha256 "630675e4fc14fc316a8d64436b9c197aac7035349c59391f2e82d7428571b272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778228828-g14902a/amp-linux-arm64"
      sha256 "c8eae5fa1d9ae0f580b92b06951f25de00676b5a326aa1f0ce7e8aa0f1c8da23"
    else
      url "https://static.ampcode.com/cli/0.0.1778228828-g14902a/amp-linux-x64"
      sha256 "6e55f97d6f90fdaf3504998f6dad95fb1531bffd020d6dd9c5c4658f978ff154"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
