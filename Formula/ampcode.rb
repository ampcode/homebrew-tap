class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769475359-g864e1d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769475359-g864e1d/amp-darwin-arm64"
      sha256 "8b139c9f2bb9f38ce37cb7fd25caaa47ba501b5a4a177936c4334515931fd65b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769475359-g864e1d/amp-darwin-x64"
      sha256 "2821c64252d684c34632c0151f2ea0e99f0aad0cca593dbf9ef67092a7f5d439"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769475359-g864e1d/amp-linux-arm64"
      sha256 "70f81fdc23f029713f7d95425b6983da57cfe3534fbc1f0d45122ee888f29684"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769475359-g864e1d/amp-linux-x64"
      sha256 "8536b1f6cb2141b29c69aa871fff515e1a888484fbb687403539edeb70f26da5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
