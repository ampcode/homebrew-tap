class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771341186-g742ce7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771341186-g742ce7/amp-darwin-arm64"
      sha256 "8bc921b1313dc7fb84fc72b16536e55d678a9e09a0800537669e73268a85edaf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771341186-g742ce7/amp-darwin-x64"
      sha256 "821c1c1e8e86564c51680062bf8846921116dfc85a77c23e6c8b867563d5a08f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771341186-g742ce7/amp-linux-arm64"
      sha256 "b113ca2cf70dc2061ae83c3d1153458ab38443a0a985d1fc1180c0b34f18ec97"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771341186-g742ce7/amp-linux-x64"
      sha256 "3a2476ab20ffbfe6ebcf0a9baa28758a2e220a90c352d1e472ec4d68dc5dea68"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
