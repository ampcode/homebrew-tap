class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771990790-g7d0629"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771990790-g7d0629/amp-darwin-arm64"
      sha256 "817eee80ca6ba1124792fb24973379730ef03762229f27055cd1180518ef2eb9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771990790-g7d0629/amp-darwin-x64"
      sha256 "c96e340c5bcbb1f8c94f48b781bccb8c2956aaaf122baee3d098522e15a7246c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771990790-g7d0629/amp-linux-arm64"
      sha256 "a662790ccbe4627e523666cd4920c61d0ac8eb8dadef5e4436416c3af995ba2c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771990790-g7d0629/amp-linux-x64"
      sha256 "2e42c61fb07806913c80cfd608276c2610e76e9bbc831d8e31297b861a523025"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
