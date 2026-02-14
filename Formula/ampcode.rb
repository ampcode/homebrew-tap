class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771027491-gd285a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771027491-gd285a6/amp-darwin-arm64"
      sha256 "706c361d6e1e8371dbe88e852bbe61188bd3c86c8156a191cffbcf0038ad79b6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771027491-gd285a6/amp-darwin-x64"
      sha256 "25f266dc300ae9b62a7713994b2cac86d667cd66fe6c44fce566896effbd2d73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771027491-gd285a6/amp-linux-arm64"
      sha256 "563a088a5bf0a99f2d4ecfaaf63e79269e9865b30c1c0ba3910848a4ec438205"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771027491-gd285a6/amp-linux-x64"
      sha256 "57f0a5af1a223c5e491181da42534151cb78a1edefc1a8d7a1c0d7ae3cd1c637"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
