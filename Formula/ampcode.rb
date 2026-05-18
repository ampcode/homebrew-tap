class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779081543-gea23bb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779081543-gea23bb/amp-darwin-arm64"
      sha256 "5d13820ee16b77bdd26409905acead2e815d764f95205f07c7571962070a5d41"
    else
      url "https://static.ampcode.com/cli/0.0.1779081543-gea23bb/amp-darwin-x64"
      sha256 "47856e90ad441e451fa40bc272aeedae39b17674d91bd557dc945ce7e7ec9ebe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779081543-gea23bb/amp-linux-arm64"
      sha256 "a3a4dc89b33c93ab78609a701cbc5241e9d8cbd1e5d0109ea2ebbca639e28e6a"
    else
      url "https://static.ampcode.com/cli/0.0.1779081543-gea23bb/amp-linux-x64"
      sha256 "3c1086de55ba2231fdf0642e3efa5b2a2ca46c7c8daf9f5c8a03fa80355830f7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
