class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771812469-gd3302f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771812469-gd3302f/amp-darwin-arm64"
      sha256 "a9d32c2ef2b65259aa66b8bf0870dd8a8f68a41022077167bb3196bf0018fdf0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771812469-gd3302f/amp-darwin-x64"
      sha256 "7b7fabd2a302cff13e82f257011d3c12089bae49efc8e254947531644cd3e753"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771812469-gd3302f/amp-linux-arm64"
      sha256 "841bb4e9a19bb62cfc0cb9846b7facba562d47d1129ba7e790224d82ce85fb7e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771812469-gd3302f/amp-linux-x64"
      sha256 "7df63fd5ec3649bb72c57dc0f4b086e68550300c640b0d16937b5d9d5c5ee624"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
