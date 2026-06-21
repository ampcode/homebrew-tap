class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782062050-gbe2b79"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782062050-gbe2b79/amp-darwin-arm64"
      sha256 "301024c1fc9d5dfef29a30e426b41a0924ff1a618385e08cb69f9a2258df6197"
    else
      url "https://static.ampcode.com/cli/0.0.1782062050-gbe2b79/amp-darwin-x64"
      sha256 "191aaf87eb71f7e8cadd0a8a19f89fa74cb067a5c04c3668af3815841192a95e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782062050-gbe2b79/amp-linux-arm64"
      sha256 "68684e6203bafa601468f982528917782271ae5163d964dd9aac9c7e8fe9fee1"
    else
      url "https://static.ampcode.com/cli/0.0.1782062050-gbe2b79/amp-linux-x64"
      sha256 "8db38b5e558b2ca5f230f6f82cb6292e6bb150588a6976d73cf02c87051bfeeb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
