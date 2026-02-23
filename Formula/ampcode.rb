class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771805001-g493d89"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771805001-g493d89/amp-darwin-arm64"
      sha256 "e0224a65f553100a92d641f8ccc91e72224a25632d48edbdbb8e28996dab9d86"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771805001-g493d89/amp-darwin-x64"
      sha256 "d65bc8fd04895a7cb77064f4857540bbd4c30eecb48e9ba15f7c43eb2129579f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771805001-g493d89/amp-linux-arm64"
      sha256 "38553faf4ffcf94753582e9d3f50d41065c6cb97db9ebab7e4c68a70e0217012"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771805001-g493d89/amp-linux-x64"
      sha256 "670663a38d7319085f86b3689ec5b5ca0a788f8bf022d02e624bcbc5e06e77b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
