class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772308894-g06c525"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772308894-g06c525/amp-darwin-arm64"
      sha256 "c84700bee469a41eb0828a3bb5a511bc0a8dca670abbf4c77e04ab64aa7a0f21"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772308894-g06c525/amp-darwin-x64"
      sha256 "e14dfc99bf4f5a9e92109956a5048a618a2283fce851550ac2334b1fa5ab071f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772308894-g06c525/amp-linux-arm64"
      sha256 "76b811170d6ba54b524ef7c6b7702661e0534db54909807055bb767575527086"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772308894-g06c525/amp-linux-x64"
      sha256 "6fcb430dcdb6cd028351478f9c2728c9430ad82639bfa3f2593dc692fc9398e9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
