class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773944796-g6caa21"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773944796-g6caa21/amp-darwin-arm64"
      sha256 "49b9f15a62f1f530c5cd82e2e03749a12d579ff1a38f0f7b4f7a3fd63f5b5f7d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773944796-g6caa21/amp-darwin-x64"
      sha256 "60a9f8536e04db02993606833fedfc15d4d9ea897e44782a2042c8bfb117a7c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773944796-g6caa21/amp-linux-arm64"
      sha256 "85c6a3b1673a7368cb87d6f5503f880d83830ea44d722d18c310956a1d590357"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773944796-g6caa21/amp-linux-x64"
      sha256 "bb1a70dbc1a04bfc398d3b3c7bbe9a0d4a604e86a168212465a591da31cd74d5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
