class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792209635-g24a9fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792209635-g24a9fe/amp-darwin-arm64"
      sha256 "8e74123a872412a19fa09f98d1a75e0cb63f0923e1ec3485c2572728fbd75022"
    else
      url "https://static.ampcode.com/cli/0.0.1792209635-g24a9fe/amp-darwin-x64"
      sha256 "7c45fe517994f940d389206d8c6df20587b85daf4062bae81d412463d9b32c35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792209635-g24a9fe/amp-linux-arm64"
      sha256 "cca527ae010c6fd1e98a1046f89a66ff29ff13af147647be1d719214145ba911"
    else
      url "https://static.ampcode.com/cli/0.0.1792209635-g24a9fe/amp-linux-x64"
      sha256 "fe3420528d822e589e00540079d2d293ae0a0ce1cc77736ca61f7c1d67de5a3f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
