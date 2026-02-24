class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771900501-gb5357f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771900501-gb5357f/amp-darwin-arm64"
      sha256 "df7779efab77ebaf408cb420219242739d94418e963b10b1255e7f8a82f76d83"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771900501-gb5357f/amp-darwin-x64"
      sha256 "1e5af3c47ca2e4060596520deccaa559212c19b2cc7525ae736eed8e2499c68f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771900501-gb5357f/amp-linux-arm64"
      sha256 "fdbe2882179d543bcdb91bf05ee2d1d122bb656ff9f9cce434f20b4ca54ac7f8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771900501-gb5357f/amp-linux-x64"
      sha256 "c2921469cb1ccd298c661570ab4752d2b2206bc650b9626febc30789221632a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
