class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774881959-g41d5bb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774881959-g41d5bb/amp-darwin-arm64"
      sha256 "a0f6bc0e75af1141bd78a34f66d5ad08e4bfbcc3e95bf5fd74dcb6db6cc6d339"
    else
      url "https://static.ampcode.com/cli/0.0.1774881959-g41d5bb/amp-darwin-x64"
      sha256 "3bd95c425266d963c35b513b7685a754acc105e434f75f64c077ef409464aaa0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774881959-g41d5bb/amp-linux-arm64"
      sha256 "435d7c0ced381d79f51c182e73cc806538b02c95662402d845f887b1198cc676"
    else
      url "https://static.ampcode.com/cli/0.0.1774881959-g41d5bb/amp-linux-x64"
      sha256 "93f930121b446f09c0de28a3b0cfd4875f14b5ba313a1e6c77f2002ff8f25e5c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
