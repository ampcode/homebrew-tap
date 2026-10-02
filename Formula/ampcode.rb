class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790928046-gae1fad"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790928046-gae1fad/amp-darwin-arm64"
      sha256 "70b133ea9d54a4c6158c0095232d0ea3dc0a55220e4106d4632183a5f785734b"
    else
      url "https://static.ampcode.com/cli/0.0.1790928046-gae1fad/amp-darwin-x64"
      sha256 "a44e938fa98ea5efb06d7a388cc77360569901ce3ea3496601730f7e441e5939"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790928046-gae1fad/amp-linux-arm64"
      sha256 "2bd962f207dba083286d4590ab03e664700ddbbface8e2a45a3c794e7b74c6a1"
    else
      url "https://static.ampcode.com/cli/0.0.1790928046-gae1fad/amp-linux-x64"
      sha256 "181c67281eef4b87a5031ffadbd790c7a2176745549fb5998d20da230c208e28"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
