class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779195255-g76ffc8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779195255-g76ffc8/amp-darwin-arm64"
      sha256 "ba62aca7b94c8e4a33a857dd3805d7281174676ec45ecdc69315328f74cd82a8"
    else
      url "https://static.ampcode.com/cli/0.0.1779195255-g76ffc8/amp-darwin-x64"
      sha256 "8ed3c36198b2251da3bdfb2323b97fb14fc57deaf4d7afddc40813bc2e426e72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779195255-g76ffc8/amp-linux-arm64"
      sha256 "cd7f1e5e407c6915b989e03a5af8d895e316df434521c3f04ce0b3fbed35547a"
    else
      url "https://static.ampcode.com/cli/0.0.1779195255-g76ffc8/amp-linux-x64"
      sha256 "58a5b2dd1d4a9a9e7697fe572533afd8997196fca134b8ee066deb261dc45ff0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
