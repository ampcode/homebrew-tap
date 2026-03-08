class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773000110-g0d1cc7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773000110-g0d1cc7/amp-darwin-arm64"
      sha256 "2461e1cb8a1461a5b49f5330effe286ca0fe68eb52187df3849b64111d83f4e4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773000110-g0d1cc7/amp-darwin-x64"
      sha256 "da4c1abbd2b26e825b033c655fdbd2899404c26f4fb04e3dde84d3943aaf9e4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773000110-g0d1cc7/amp-linux-arm64"
      sha256 "20a7dc7b04fbdbb0d89afe1ef461b3354a1bdecf8b467c04bb78e28eb1b24d16"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773000110-g0d1cc7/amp-linux-x64"
      sha256 "7300680a2df0ab8f21b3d6d3025768013d3eec9af8d122620fc872b2874b2126"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
