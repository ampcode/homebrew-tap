class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774341467-g86d7fe"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774341467-g86d7fe/amp-darwin-arm64"
      sha256 "da1c38d47563b65af0e9d9eb637ae56347064efec9952f533ce37af998721a58"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774341467-g86d7fe/amp-darwin-x64"
      sha256 "5d12497201abf4e042d0dd4331b49313ae8d215a02b8ab76ad866cb9f2d589f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774341467-g86d7fe/amp-linux-arm64"
      sha256 "be596e22f1e165c560f051e72b759e595f1a427656c7ebf9e37a32eb0203b3eb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774341467-g86d7fe/amp-linux-x64"
      sha256 "5445c6ef56a174727ed85c3be6670cd63c992576228dd7401c58979e3570a3a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
