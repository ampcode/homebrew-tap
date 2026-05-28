class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779988174-g8dd537"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779988174-g8dd537/amp-darwin-arm64"
      sha256 "f6043649f26e06557f48578befaa74afd819d01bf4fb13b023a353dd4775d8c3"
    else
      url "https://static.ampcode.com/cli/0.0.1779988174-g8dd537/amp-darwin-x64"
      sha256 "2c940cebe0a4f216ef9fc41073dfeb4ecc3bf9d56aa4d96a89e7298b86eb4a9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779988174-g8dd537/amp-linux-arm64"
      sha256 "8fb22dadfcd0efd6733f521d155e63ce9957d94740ed60c0806f738902bcf409"
    else
      url "https://static.ampcode.com/cli/0.0.1779988174-g8dd537/amp-linux-x64"
      sha256 "4efc335ab15d61427d594a3754570ec26cdc93a78273f9f5b59632e2656ec459"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
