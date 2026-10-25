class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792944038-gf7f990"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792944038-gf7f990/amp-darwin-arm64"
      sha256 "be709ac005ab3fe6202b35915632eaca3144e195549ab9b2a8be8fc9760e4a16"
    else
      url "https://static.ampcode.com/cli/0.0.1792944038-gf7f990/amp-darwin-x64"
      sha256 "aa7c3f9dd4e975b114e8fa0bbe67f8c4c2e1766b09c199d1bbf160d484d33770"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792944038-gf7f990/amp-linux-arm64"
      sha256 "b772637cd48ac9b866d80f5e1cba5b8320ce9d1e9dfb49e5fcd9112e0ede2f88"
    else
      url "https://static.ampcode.com/cli/0.0.1792944038-gf7f990/amp-linux-x64"
      sha256 "a4ec8f5b250ae8774d1018588e26862edddd6caa7e1802a63f3399322d68f323"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
