class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779321658-g3637e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779321658-g3637e2/amp-darwin-arm64"
      sha256 "dd82d30a7242be1a5163d89db0dcad2bab50f0d643746e3363f657cf6e9b0dd7"
    else
      url "https://static.ampcode.com/cli/0.0.1779321658-g3637e2/amp-darwin-x64"
      sha256 "02e9adfaa558ec4af7afe3e303f3dd8b8e79436d9cf383c2e3d7ad510e687385"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779321658-g3637e2/amp-linux-arm64"
      sha256 "2af8fce185dec305b13b240ba9504120215ae208f1c620356a9248ce840aa920"
    else
      url "https://static.ampcode.com/cli/0.0.1779321658-g3637e2/amp-linux-x64"
      sha256 "f0cb2eb5c9fe87e27857b806080a23b2dff6960289a05d2bc83ccec8ca0b56d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
