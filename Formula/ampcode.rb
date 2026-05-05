class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777970347-gc2d807"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777970347-gc2d807/amp-darwin-arm64"
      sha256 "8ef1dfcc6c595906f10095ef6763774b94f31ea7e163117f36acbcdb6419c548"
    else
      url "https://static.ampcode.com/cli/0.0.1777970347-gc2d807/amp-darwin-x64"
      sha256 "95075d6784ab8b21ab38fb384e3453006c27f6e880466c81187a6519c93f6fa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777970347-gc2d807/amp-linux-arm64"
      sha256 "5f22c81843da94bb96d095c2d1b1822cf2241c3070422f7371f7b0608be787be"
    else
      url "https://static.ampcode.com/cli/0.0.1777970347-gc2d807/amp-linux-x64"
      sha256 "24ba6aa06c79cc6626511db3549cf5f78bd42388ee52afcfc2f772809149ec24"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
