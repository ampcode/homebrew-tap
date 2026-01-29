class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769716999-gdf283f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769716999-gdf283f/amp-darwin-arm64"
      sha256 "a6fae5d62665d6cfa713940b71c7ae37bba4a0d7455a65eb504e40df86f1f308"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769716999-gdf283f/amp-darwin-x64"
      sha256 "ca7caecdd5949ff4a6c5a0d97b30048f2216eaaec28250f236b07dc64c3685d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769716999-gdf283f/amp-linux-arm64"
      sha256 "a8a2134070ec954ea2bd7b1811fdf72282e795efb3350cebcf81c35346fab086"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769716999-gdf283f/amp-linux-x64"
      sha256 "a6ece582f8ded13bc8d2b8bc0b99fe8185acfafa5eff138bb5330d53851b4140"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
