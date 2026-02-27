class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772179688-gbb5e7d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179688-gbb5e7d/amp-darwin-arm64"
      sha256 "240e4e975b018f1fb0bbf6f63f2ddf5dfae1f5d695c13a7ab37ab87f142e6727"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179688-gbb5e7d/amp-darwin-x64"
      sha256 "8dd47a99026a580a6614ea4fc03fe0c838422edb49a68abe7ff537dc82e29e59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179688-gbb5e7d/amp-linux-arm64"
      sha256 "e97a746ba5a911f1cced759a7290923e57df6fe793e481997a602cbfa4c9f863"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772179688-gbb5e7d/amp-linux-x64"
      sha256 "7268dda84f33b54b1265bc8a6358833cd8067c31492683a4eede8da581184d30"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
