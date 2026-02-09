class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770628766-gcf4049"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770628766-gcf4049/amp-darwin-arm64"
      sha256 "6f342e1b54005c0661f6a989391c388aaedfb59da5901a5e0479d5957d73027c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770628766-gcf4049/amp-darwin-x64"
      sha256 "9c75b5e0e53c8b6c89b3f47775394b686b744789a865a3fb7ae32ee4d364173b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770628766-gcf4049/amp-linux-arm64"
      sha256 "0e8f907b50c9012d310f213e8278ca6987d864f58dd9bc2d311f519e323a3184"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770628766-gcf4049/amp-linux-x64"
      sha256 "a6bc936801962243cd20a3ff8c3a7db1f184e4ce406196dfc06f7e511c5cdfbd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
